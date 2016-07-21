#nested data structure of my vocal repertoire

repertoire = {
	french: {
		'faure' => ['Les berceaux', 'Clair de lune'],
		'duparc' => ['La vie anterieure', 'Chanson triste'],
		'debussy' => ['Clair de lune', 'Beau soir'],
		'ravel' => 'L\'enfant et les sortileges'
	},
	english: {
		'handel' => ['Every valley', 'Messiah'],
		'copland' => {
			set_1: ['The Boatmen\'s Dance', 'I Bought Me a Cat'],
			set_2: 'At the River'
		},
		'williams' => {
			'songs of travel' => ['The Vagabond', 'Whither Must I Wander'],
			'the house of life' => 'Silent Noon'
		}
	},
	italian: {
		'verdi' => 'The Duke',
		'puccini' => 'Rodolpho'
	},
	german: {
		'schubert' => {
			'die schone mullerin' => ['2. Wohin?'],
		},
		'strauss' => ['heimliche aufforderung', 'Morgen']
	}
}

p repertoire[:french]['faure'][1]
p repertoire[:english]['copland'][:set_1].last
repertoire[:german]['schubert']['die schone mullerin'] << '3. Halt!'
p repertoire[:german]['schubert']['die schone mullerin'][1]
repertoire[:english]['williams']['songs of travel'].delete('Whither Must I Wander')
p repertoire[:english]['williams']['songs of travel']
repertoire[:french]['debussy'].delete_at(1)
p repertoire[:french]['debussy']